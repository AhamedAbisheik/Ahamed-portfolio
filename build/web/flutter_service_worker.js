'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "693635b5258fe5f1cda720cf224f158c",
"assets/AssetManifest.bin.json": "69a99f98c8b1fb8111c5fb961769fcd8",
"assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"assets/FontManifest.json": "c1dca12603ca21fc2f9f5ac78feaed2e",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/fonts/MaterialIcons-Regular.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/icons/av.png": "962ef01d00b0560da73f26c387510066",
"assets/icons/briefcase.png": "12e9358e8dbae5cb406a7abeec84d4f5",
"assets/icons/call.png": "9e299bb392428812cffbdadaf9272b15",
"assets/icons/coding.png": "c8150fc2000e8674220bcd485b30e68f",
"assets/icons/coffee.png": "19e4f65ea926133b771bf82daa35f5d4",
"assets/icons/design.png": "c59f68c8be347d0a5231b2b714421b24",
"assets/icons/double-up-arrow.png": "d758827b82d3262d54d19f7482c36b63",
"assets/icons/email.png": "ecf609bb48c645251a898c5527f7c781",
"assets/icons/facebook.png": "d03d1cb8afb8da75756264994a9ce4d4",
"assets/icons/github.png": "0918d78648457def080137b179fc5608",
"assets/icons/happy.png": "3837c30afeb5b40886a787810f553fc3",
"assets/icons/linkedin.png": "3c963b14a58df80613b15c7e9e4e9c57",
"assets/icons/list.png": "4e63ee6122b58866f4a2d2408c02f9ef",
"assets/icons/menu.png": "3ca1d45f78b3acb1d2a89a53271a21db",
"assets/icons/pencil.png": "4566fb93d2196b9b2b74be9cfe23d0c8",
"assets/icons/pin.png": "c40700870fa15459e94f3ffd6eccfcfd",
"assets/icons/twitter.png": "cadd7c4e3a3a29ddfa395393e652012a",
"assets/images/ahmd.jpg": "fc435e2ddbbb6ac3799f088294ff6200",
"assets/images/ahmdss.jpg": "6382fdef4f652a556adf3744afc913cb",
"assets/images/background.jpg": "346c1daab54715d3701cddb8b2ee0999",
"assets/images/cover.png": "e36a284ea4a8825e9d63a7d3d195dda9",
"assets/images/cover1.jpg": "1d39c3dd934e44b95eb2ad8533aa8068",
"assets/images/cover2.png": "45db67df2ce4cd9e04d65f8278770590",
"assets/images/cover5.png": "351d10625a8eb3bd12bcb7252fa03f82",
"assets/images/cover6.png": "e0092e2dcc1f18c2e38d782739ca11bc",
"assets/images/icon.jpg": "fc435e2ddbbb6ac3799f088294ff6200",
"assets/images/icon1.jpg": "7d592b1688dfb9f3dd9b1d069855e11f",
"assets/images/ouahid.png": "40f28ccd5e901cba913ec4c55b9b314a",
"assets/images/projects/av.png": "962ef01d00b0560da73f26c387510066",
"assets/images/projects/co.png": "3d9963f0d512eee435bdf96a074c4962",
"assets/images/projects/fac.png": "e78e2705df5159051b55f656c598fc94",
"assets/images/projects/flg.png": "03ee1ffb2fc3bd553e09d1aa0ddb32cd",
"assets/images/projects/juda.png": "47dd713dafca0915de28fee247372661",
"assets/images/projects/k.png": "3c560d94e626a90928824181ceac6126",
"assets/images/projects/mu-lo.png": "9bde95be556eeecacf7e28e5f1510684",
"assets/images/projects/nala-thu.png": "21b64c1c1fdc5699f115a63c02ab005e",
"assets/images/projects/nataloe.png": "f2e32e0341fcde78352c4fb7fd364d7b",
"assets/images/projects/omran.png": "ca5fe45e4998ba2cd53c795537419014",
"assets/images/projects/sbi-M.png": "df88af21082a034d69ea84aa7010a2bd",
"assets/images/projects/Th-tol.png": "27b233d1a31475e2bfbd9287813ea2b8",
"assets/images/projects/topfood.png": "2e85bf80bf3965f6b85fb19fe1c6d3af",
"assets/images/projects/toptaxi.png": "25fc761abc220c62a31a61a41542872f",
"assets/images/projects/twd.png": "ab561da7db44c7b25cdf9f9419446d10",
"assets/NOTICES": "bb50f68e13b40f278aa0c5f76a6d14e5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "3a665e961d119e57ffbbe58f84637d6f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9117577473a41f9bf5f9e8fe89b4ae2a",
"/": "9117577473a41f9bf5f9e8fe89b4ae2a",
"main.dart.js": "3c84605a6ba80a3ab832c37b1b66b5e1",
"manifest.json": "ef2a649c95fa08600c1c9f17622375e2",
"version.json": "30fc536554551576aa0225a0f9061302"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
