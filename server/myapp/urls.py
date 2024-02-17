from django.urls import path

from myapp import views

app_name = 'myapp'
urlpatterns = [
    # api
    path('admin/overview/count', views.admin.overview.count),
    path('admin/overview/sysInfo', views.admin.overview.sysInfo),
    path('admin/wg/list', views.admin.wg.list_api),
    path('admin/wg/create', views.admin.wg.create),
    path('admin/wg/update', views.admin.wg.update),
    path('admin/wg/delete', views.admin.wg.delete),
    path('admin/member/list', views.admin.member.list_api),
    path('admin/member/create', views.admin.member.create),
    path('admin/member/update', views.admin.member.update),
    path('admin/member/delete', views.admin.member.delete),
    path('admin/thing/list', views.admin.thing.list_api),
    path('admin/thing/detail', views.admin.thing.detail),
    path('admin/thing/create', views.admin.thing.create),
    path('admin/thing/update', views.admin.thing.update),
    path('admin/thing/delete', views.admin.thing.delete),
    path('admin/classification/list', views.admin.classification.list_api),
    path('admin/classification/create', views.admin.classification.create),
    path('admin/classification/update', views.admin.classification.update),
    path('admin/classification/delete', views.admin.classification.delete),
    path('admin/tag/list', views.admin.tag.list_api),
    path('admin/tag/create', views.admin.tag.create),
    path('admin/tag/update', views.admin.tag.update),
    path('admin/tag/delete', views.admin.tag.delete),
    path('admin/loginLog/list', views.admin.loginLog.list_api),
    path('admin/loginLog/create', views.admin.loginLog.create),
    path('admin/loginLog/update', views.admin.loginLog.update),
    path('admin/loginLog/delete', views.admin.loginLog.delete),
    path('admin/opLog/list', views.admin.opLog.list_api),
    path('admin/errorLog/list', views.admin.errorLog.list_api),
    path('admin/user/list', views.admin.user.list_api),
    path('admin/user/create', views.admin.user.create),
    path('admin/user/update', views.admin.user.update),
    path('admin/user/updatePwd', views.admin.user.updatePwd),
    path('admin/user/delete', views.admin.user.delete),
    path('admin/user/info', views.admin.user.info),
    path('admin/adminLogin', views.admin.user.admin_login),


]
