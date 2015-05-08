using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLayer
{
    [ServiceContract]
    public interface IServiceBase<T>
    {
        [OperationContract]
        T Add(T item);
        [OperationContract]
        T Update(T item);
        [OperationContract]
        bool Delete(Guid Id);
        [OperationContract]
        List<T> GetAll();
        [OperationContract]
        T GetEntityById(Guid Id);
    }
}
