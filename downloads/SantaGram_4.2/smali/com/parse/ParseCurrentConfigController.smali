.class Lcom/parse/ParseCurrentConfigController;
.super Ljava/lang/Object;


# instance fields
.field currentConfig:Lcom/parse/ParseConfig;

.field private currentConfigFile:Ljava/io/File;

.field private final currentConfigMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigMutex:Ljava/lang/Object;

    iput-object p1, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseCurrentConfigController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigMutex:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method clearCurrentConfigForTesting()V
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentConfigAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParseCurrentConfigController$2;

    invoke-direct {v0, p0}, Lcom/parse/ParseCurrentConfigController$2;-><init>(Lcom/parse/ParseCurrentConfigController;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method getFromDisk()Lcom/parse/ParseConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigFile:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseConfig;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseConfig;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method saveToDisk(Lcom/parse/ParseConfig;)V
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/parse/NoObjectsEncoder;->get()Lcom/parse/NoObjectsEncoder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseConfig;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parse/NoObjectsEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not serialize config to JSON"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentConfigAsync(Lcom/parse/ParseConfig;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseConfig;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParseCurrentConfigController$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseCurrentConfigController$1;-><init>(Lcom/parse/ParseCurrentConfigController;Lcom/parse/ParseConfig;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method
