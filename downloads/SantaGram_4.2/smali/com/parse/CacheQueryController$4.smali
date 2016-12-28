.class Lcom/parse/CacheQueryController$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CacheQueryController;->countFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/CacheQueryController;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$state:Lcom/parse/ParseQuery$State;


# direct methods
.method constructor <init>(Lcom/parse/CacheQueryController;Ljava/lang/String;Lcom/parse/ParseQuery$State;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CacheQueryController$4;->this$0:Lcom/parse/CacheQueryController;

    iput-object p2, p0, Lcom/parse/CacheQueryController$4;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/CacheQueryController$4;->val$state:Lcom/parse/ParseQuery$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 5

    const/16 v4, 0x78

    iget-object v0, p0, Lcom/parse/CacheQueryController$4;->val$cacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/parse/CacheQueryController$4;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State;->maxCacheAge()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parse/ParseKeyValueCache;->jsonFromKeyValueCache(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "results not cached"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "the cache contains corrupted json"

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/CacheQueryController$4;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
