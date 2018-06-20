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
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports) {

$(document).ready(function () {
  $('.sale-slider').slick({
    prevArrow: "<button type=\"button\" class=\"slick-prev\">\n            <i class=\"fa fa-angle-left\"></i>\n        </button>",
    nextArrow: "<button type=\"button\" class=\"slick-next\">\n            <i class=\"fa fa-angle-right\"></i>\n        </button>"
  });
  var subMenuContainer = $('.sub-menu-container');
  var currentShowSubMenu = false;
  var finishShowMenu = true;
  subMenuContainer.on('click', function (e) {
    if (!currentShowSubMenu && finishShowMenu) {
      finishShowMenu = false;
      $(e.target).parents('.sub-menu-container').find('.navbar__sub-menu').slideDown('fast', function () {
        finishShowMenu = true;
        currentShowSubMenu = true;
      });
    } else {
      if (finishShowMenu) {
        finishShowMenu = false;
        $('.navbar__sub-menu').slideUp('fast', function () {
          finishShowMenu = true;
          currentShowSubMenu = false;
        });
      }
    }
  });
  $('.navbar__sub-menu').click(function (e) {
    e.stopPropagation();
  });
  $('body').click(function (e) {
    if (currentShowSubMenu && finishShowMenu) {
      currentShowSubMenu = false;
      finishShowMenu = false;
      $('.navbar__sub-menu').slideUp('fast', function () {
        finishShowMenu = true;
      });
    }
  });
});

/***/ })
/******/ ]);