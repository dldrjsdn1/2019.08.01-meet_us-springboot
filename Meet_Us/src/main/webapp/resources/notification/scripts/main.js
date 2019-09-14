/*
*
*  Push Notifications codelab
*  Copyright 2015 Google Inc. All rights reserved.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      https://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License
*
*/

/* eslint-env browser, es6 */

'use strict';

const applicationServerPublicKey = 'BEa5yzyZ30LC67ykTheqZufMs-xELLnpwnaSFaByMbZdQMN-cKTGrlUyGAi4vksfBMtlPYrcWRyUruA3NkfcK40';

//AAAAB3NzaC1yc2EAAAADAQABAAABAQC+fevrAzq3WnyTuCWMMpK7xHqzR1ImJ6eJUgHaS1rQNkUiMnJ3JM5fMb8XOegz0CjCnfwxVuNQLr9esmIrCu6HdsIHMhpMAVxSBcWjYTxxkTxDUylSqHQjcFF/IF4B/2i3Q8rcD3ZlL/ZwEDsQvMain9N3EL8hkVTQtaWr0fRv5zomsaza4htPm+2LLhbJAIs3zcWb+pDVJ0cu34yh7HWibKN09FovGvG0opFyvYiVLVd/ZT4XBJ0nC6nMUdrmQWCjVKlHg0BQgyO91etzcjUklYZUH7R4DcPuIPSTVNS2UtKsT2jUKfCXkhH3KtPtONHdg8Vg7s7qEYJTEbQWwNkT
//AAAAB3NzaC1yc2EAAAADAQABAAABAQDILRkl7ehvPlr4gwC7woBX11yxH8501ymgQk/Gq65qj8dN2GQZW1UKVKHnNSW1xqebfbRlIKw71+SV8s/YUjM9/9csdPinuXdbGH5LTkV0du+TGhHcGsB/vMTpnLP2FJ4KNSDcxw6kWQXUNMzip76EOPoCGEfA8L7BkhskF/grSPVMbLZaxXLoMmSQ9CRwsUX51UYlebsLyJRSQsDr3nhiVRAqRnTJK4ZtJ0Fz/JMJClVgye17a+xMbO4g2zNB+bWb2dcpFlzVh3ilZnvWEvAT5NSnZ5QZOfAnbBSiaXdzc/7gqJ9GDaD3F9m0UmakTbJztq+DMv2BpFl4WTRI5ZJh

const pushButton = document.querySelector('.js-push-btn');

let isSubscribed = false;
let swRegistration = null;

function urlB64ToUint8Array(base64String) {
  const padding = '='.repeat((4 - base64String.length % 4) % 4);
  const base64 = (base64String + padding)
    .replace(/\-/g, '+')
    .replace(/_/g, '/');

  const rawData = window.atob(base64);
  const outputArray = new Uint8Array(rawData.length);

  for (let i = 0; i < rawData.length; ++i) {
    outputArray[i] = rawData.charCodeAt(i);
  }
  return outputArray;
}

if ('serviceWorker' in navigator && 'PushManager' in window) {
  console.log('Service Worker and Push is supported');

  navigator.serviceWorker.register('/resources/notification/sw.js')
  .then(function(swReg) {
    console.log('Service Worker is registered', swReg);

    swRegistration = swReg;
  })
  .catch(function(error) {
    console.error('Service Worker Error', error);
  });
} else {
  console.warn('Push messaging is not supported');
  pushButton.textContent = 'Push Not Supported';
}

// 사용자가 현재 구독한 상태인지 확인하는 함수
function initialiseUI() {
  pushButton.addEventListener('click', function() {
  pushButton.disabled = true;
  if (isSubscribed) {
    unsubscribeUser();
  } else {
    subscribeUser();
  }
});

  // Set the initial subscription value
  swRegistration.pushManager.getSubscription()
  .then(function(subscription) {
    isSubscribed = !(subscription === null);

    if (isSubscribed) {
      console.log('User IS subscribed.');
    } else {
      console.log('User is NOT subscribed.');
    }

    updateBtn();
  });
}

// 사용자가 구독한 상태이면 버튼의 상태를 활성화 하고 텍스트를 변경함
function updateBtn() {
  if (isSubscribed) {
    pushButton.textContent = '푸시 메세지를 사용할 수 없음';
  } else {
    pushButton.textContent = '푸시 메시지를 사용할 수 있음';
  }

  pushButton.disabled = false;
}

navigator.serviceWorker.register('/resources/notification/sw.js')
.then(function(swReg) {
  console.log('Service Worker is registered', swReg);

  swRegistration = swReg;
  initialiseUI();
})

function subscribeUser() {
  const applicationServerKey = urlB64ToUint8Array(applicationServerPublicKey);
  swRegistration.pushManager.subscribe({
    userVisibleOnly: true,
    applicationServerKey: applicationServerKey
  })
  .then(function(subscription) {
    console.log('User is subscribed:', subscription);

    updateSubscriptionOnServer(subscription);

    isSubscribed = true;

    updateBtn();
  })
  .catch(function(err) {
    console.log('Failed to subscribe the user: ', err);
    updateBtn();
  });
}

function updateSubscriptionOnServer(subscription) {
  // TODO: Send subscription to application server

  const subscriptionJson = document.querySelector('.js-subscription-json');
  const subscriptionDetails =
    document.querySelector('.js-subscription-details');

  if (subscription) {
    subscriptionJson.textContent = JSON.stringify(subscription);
    subscriptionDetails.classList.remove('is-invisible');
  } else {
    subscriptionDetails.classList.add('is-invisible');
  }
}

function updateBtn() {
  if (Notification.permission === 'denied') {
    pushButton.textContent = 'Push Messaging Blocked.';
    pushButton.disabled = true;
    updateSubscriptionOnServer(null);
    return;
  }

  if (isSubscribed) {
    pushButton.textContent = 'Disable Push Messaging';
  } else {
    pushButton.textContent = 'Enable Push Messaging';
  }

  pushButton.disabled = false;
}


//현재 구독 정보를 가져롸 구독 취소를 호출한다.
function unsubscribeUser() {
  swRegistration.pushManager.getSubscription()
  .then(function(subscription) {
    if (subscription) {
      return subscription.unsubscribe();
    }
  })
  .catch(function(error) {
    console.log('Error unsubscribing', error);
  })
  .then(function() {
    updateSubscriptionOnServer(null);

    console.log('User is unsubscribed.');
    isSubscribed = false;

    updateBtn();
  });
}
