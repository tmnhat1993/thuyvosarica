/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./the-sarica-theme/assets/js/scripts.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./the-sarica-theme/assets/js/scripts.js":
/*!***********************************************!*\
  !*** ./the-sarica-theme/assets/js/scripts.js ***!
  \***********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
eval("\n\n$(document).ready(function () {\n  $('.sale-slider').slick({\n    prevArrow: \"<button type=\\\"button\\\" class=\\\"slick-prev\\\">\\n            <i class=\\\"fa fa-angle-left\\\"></i>\\n        </button>\",\n    nextArrow: \"<button type=\\\"button\\\" class=\\\"slick-next\\\">\\n            <i class=\\\"fa fa-angle-right\\\"></i>\\n        </button>\"\n  });\n  var subMenuContainer = $('.sub-menu-container');\n  var currentShowSubMenu = false;\n  var finishShowMenu = true;\n  subMenuContainer.on('click', function (e) {\n    if (!currentShowSubMenu && finishShowMenu) {\n      finishShowMenu = false;\n      $(e.target).parents('.sub-menu-container').find('.navbar__sub-menu').slideDown('fast', function () {\n        finishShowMenu = true;\n        currentShowSubMenu = true;\n      });\n    } else {\n      if (finishShowMenu) {\n        finishShowMenu = false;\n        $('.navbar__sub-menu').slideUp('fast', function () {\n          finishShowMenu = true;\n          currentShowSubMenu = false;\n        });\n      }\n    }\n  });\n  $('.navbar__sub-menu').click(function (e) {\n    e.stopPropagation();\n  });\n  $('body').click(function (e) {\n    if (currentShowSubMenu && finishShowMenu) {\n      currentShowSubMenu = false;\n      finishShowMenu = false;\n      $('.navbar__sub-menu').slideUp('fast', function () {\n        finishShowMenu = true;\n      });\n    }\n  });\n\n  if ($(window).width() <= 769) {\n    var menuBar = $('.navbar__main-menu');\n    var expandBtn = $('.expand-menu');\n    expandBtn.click(function () {\n      menuBar.slideToggle('fast');\n      expandBtn.toggleClass('expaned');\n    });\n  }\n});\n\n//# sourceURL=webpack:///./the-sarica-theme/assets/js/scripts.js?");

/***/ })

/******/ });