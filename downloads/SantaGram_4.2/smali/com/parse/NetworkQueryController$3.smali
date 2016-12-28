.class Lcom/parse/NetworkQueryController$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkQueryController;->countAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;ZLa/j;)La/j;
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
        "La/j",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkQueryController;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;

.field final synthetic val$state:Lcom/parse/ParseQuery$State;


# direct methods
.method constructor <init>(Lcom/parse/NetworkQueryController;Lcom/parse/ParseQuery$State;Lcom/parse/ParseRESTCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/NetworkQueryController$3;->this$0:Lcom/parse/NetworkQueryController;

    iput-object p2, p0, Lcom/parse/NetworkQueryController$3;->val$state:Lcom/parse/ParseQuery$State;

    iput-object p3, p0, Lcom/parse/NetworkQueryController$3;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/NetworkQueryController$3;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/NetworkQueryController$3;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/parse/ParseKeyValueCache;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/NetworkQueryController$3;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
