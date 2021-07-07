using MongoDB.Driver;

namespace Avanade.SubTCSE.Projeto.Domain.Base.MongoDB
{
    public interface IMogoDBContext
    {
        IMongoCollection<TEntity> GetColletion<TEntity>(string collection);
    }
}
