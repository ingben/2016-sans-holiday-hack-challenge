.class Lcom/parse/NetworkQueryController$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkQueryController;->findAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;ZLa/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkQueryController;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;

.field final synthetic val$querySent:J

.field final synthetic val$queryStart:J

.field final synthetic val$state:Lcom/parse/ParseQuery$State;


# direct methods
.method constructor <init>(Lcom/parse/NetworkQueryController;Lcom/parse/ParseQuery$State;Lcom/parse/ParseRESTCommand;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/parse/NetworkQueryController$1;->this$0:Lcom/parse/NetworkQueryController;

    iput-object p2, p0, Lcom/parse/NetworkQueryController$1;->val$state:Lcom/parse/ParseQuery$State;

    iput-object p3, p0, Lcom/parse/NetworkQueryController$1;->val$command:Lcom/parse/ParseRESTCommand;

    iput-wide p4, p0, Lcom/parse/NetworkQueryController$1;->val$querySent:J

    iput-wide p6, p0, Lcom/parse/NetworkQueryController$1;->val$queryStart:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/NetworkQueryController$1;->then(La/j;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(La/j;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/NetworkQueryController$1;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/parse/NetworkQueryController$1;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseKeyValueCache;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/parse/NetworkQueryController$1;->this$0:Lcom/parse/NetworkQueryController;

    iget-object v5, p0, Lcom/parse/NetworkQueryController$1;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v1}, Lcom/parse/NetworkQueryController;->convertFindResponse(Lcom/parse/ParseQuery$State;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-string v6, "trace"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "trace"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "ParseQuery"

    const-string v7, "Query pre-processing took %f seconds\n%s\nClient side parsing took %f seconds\n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/parse/NetworkQueryController$1;->val$querySent:J

    iget-wide v12, p0, Lcom/parse/NetworkQueryController$1;->val$queryStart:J

    sub-long/2addr v10, v12

    long-to-float v10, v10

    const v11, 0x49742400    # 1000000.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    sub-long v2, v4, v2

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/parse/PLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method
