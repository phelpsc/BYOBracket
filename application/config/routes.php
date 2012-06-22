<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['share/(:any)'] = 'share/retrieve/$1';
$route['share'] = 'share';
$route['teamlist'] = 'teamlist';
$route['team/(:num)/(:num)'] = 'team/select/$1/$2';
$route['team/(:num)'] = 'team/select/$1';
$route['team/remove/(:num)'] = 'team/remove/$1';
$route['team/reset'] = 'team/reset';
$route['team/get'] = 'team/get';
$route['team/drag/(:num)/(:num)'] = 'team/drag/$1/$2';
$route['team/autoFill'] = 'team/autoFill';
$route['team'] = 'team/select';
$route['logout'] = 'logout';
$route['register/email/(:any)'] = 'register/email/$1';
$route['register/username/(:any)'] = 'register/username/$1';
$route['register'] = 'register';
$route['validate/(:any)'] = 'register/validate/$1';
$route['instructions'] = 'instructions';
$route['validate'] = 'register/validate';
$route['bracket'] = 'bracket';
$route['seeding/team/reset'] = 'team/reset';
$route['seeding/team/get'] = 'team/get';
$route['seeding/team'] = 'team/select';
$route['seeding/u/(:any)'] = 'seeding/index/u/$1';
$route['seeding/(:any)'] = 'seeding/index/$1';
$route['seeding'] = 'seeding';
$route['tournament/team/reset'] = 'team/reset';
$route['tournament/team/get'] = 'team/get';
$route['tournament/team'] = 'team/select';
$route['tournament/(:any)'] = 'tournament/index/$1';
$route['tournament'] = 'tournament';
$route['(:any)'] = 'tournament/index/$1';
$route['default_controller'] = 'tournament';

/* End of file routes.php */
/* Location: ./application/config/routes.php */