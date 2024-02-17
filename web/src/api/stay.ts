import { get, post } from '/@/utils/http/axios';

enum URL {
  list = '/myapp/admin/stay/list',
  create = '/myapp/admin/stay/create',
  update = '/myapp/admin/stay/update',
  delete = '/myapp/admin/stay/delete',
}

const listApi = async (params: any) => get<any>({ url: URL.list, params: params, data: {}, headers: {} });
const createApi = async (data: any) =>
  post<any>({
    url: URL.create,
    params: {},
    data: data,
    headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' },
  });
const updateApi = async (params: any, data: any) =>
  post<any>({
    url: URL.update,
    params: params,
    data: data,
    headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' },
  });
const deleteApi = async (params: any) => post<any>({ url: URL.delete, params: params, headers: {} });

export { listApi, createApi, updateApi, deleteApi };
