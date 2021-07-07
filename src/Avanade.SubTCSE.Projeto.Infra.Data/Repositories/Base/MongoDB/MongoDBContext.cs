using Avanade.SubTCSE.Projeto.Domain.Base.MongoDB;
using MongoDB.Driver;

namespace Avanade.SubTCSE.Projeto.Infra.Data.Repositories.Base.MongoDB
{
    public class MongoDBContext : IMogoDBContext
    {
        public IMongoCollection<TEntity> GetColletion<TEntity>(string collection)
        {
            throw new System.NotImplementedException();
        }
    }
}
