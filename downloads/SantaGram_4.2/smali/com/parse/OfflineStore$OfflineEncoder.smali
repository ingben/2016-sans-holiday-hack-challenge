.class Lcom/parse/OfflineStore$OfflineEncoder;
.super Lcom/parse/ParseEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/OfflineStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfflineEncoder"
.end annotation


# instance fields
.field private db:Lcom/parse/ParseSQLiteDatabase;

.field private tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tasksLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 1

    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncoder;->this$0:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Lcom/parse/ParseEncoder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder;->tasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder;->tasksLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineEncoder;->db:Lcom/parse/ParseSQLiteDatabase;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder;->tasksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder;->tasks:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__type"

    const-string v2, "OfflineObject"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineEncoder;->tasksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/parse/OfflineStore$OfflineEncoder;->tasks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/OfflineStore$OfflineEncoder;->this$0:Lcom/parse/OfflineStore;

    iget-object v4, p0, Lcom/parse/OfflineStore$OfflineEncoder;->db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
    invoke-static {v3, p1, v4}, Lcom/parse/OfflineStore;->access$200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$OfflineEncoder$2;

    invoke-direct {v4, p0, v0}, Lcom/parse/OfflineStore$OfflineEncoder$2;-><init>(Lcom/parse/OfflineStore$OfflineEncoder;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, La/j;->c(La/h;)La/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whenFinished()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder;->tasks:Ljava/util/ArrayList;

    invoke-static {v0}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$OfflineEncoder$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$OfflineEncoder$1;-><init>(Lcom/parse/OfflineStore$OfflineEncoder;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method
