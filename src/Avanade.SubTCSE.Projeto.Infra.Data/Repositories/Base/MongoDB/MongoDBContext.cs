using Avanade.SubTCSE.Projeto.Domain.Base.MongoDB;
using MongoDB.Driver;

namespace Avanade.SubTCSE.Projeto.Infra.Data.Repositories.Base.MongoDB
{
    public class MongoDBContext : IMogoDBContext
    {
        private readonly IMongoDatabase _mongoDatabase;

        public MongoDBContext()
        {
            MongoClientSettings mongoClientSettings = MongoClientSettings
                .FromUrl(new MongoUrl(""));

            mongoClientSettings.SslSettings =
                new SslSettings()
                {
                    EnabledSslProtocols = System.Security.Authentication.SslProtocols.Tls12
                };

            MongoClient mongoClient = new MongoClient(settings: mongoClientSettings);

            IMongoDatabase mongoDatabase = mongoClient.GetDatabase("");

            mongoDatabase.GetCollection
        }

        public IMongoCollection<TEntity> GetColletion<TEntity>(string collection)
        {
            throw new System.NotImplementedException();
        }
    }
}
