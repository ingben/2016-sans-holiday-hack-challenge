.class Lcom/parse/CacheQueryController;
.super Lcom/parse/AbstractQueryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/CacheQueryController$CommandDelegate;
    }
.end annotation


# instance fields
.field private final networkController:Lcom/parse/NetworkQueryController;


# direct methods
.method public constructor <init>(Lcom/parse/NetworkQueryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/AbstractQueryController;-><init>()V

    iput-object p1, p0, Lcom/parse/CacheQueryController;->networkController:Lcom/parse/NetworkQueryController;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/CacheQueryController;)Lcom/parse/NetworkQueryController;
    .locals 1

    iget-object v0, p0, Lcom/parse/CacheQueryController;->networkController:Lcom/parse/NetworkQueryController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;)La/j;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/parse/CacheQueryController;->findFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;)La/j;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/parse/CacheQueryController;->countFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private countFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/parse/ParseRESTQueryCommand;->countCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/CacheQueryController$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/CacheQueryController$4;-><init>(Lcom/parse/CacheQueryController;Ljava/lang/String;Lcom/parse/ParseQuery$State;)V

    sget-object v0, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private findFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/CacheQueryController$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/CacheQueryController$3;-><init>(Lcom/parse/CacheQueryController;Ljava/lang/String;Lcom/parse/ParseQuery$State;)V

    sget-object v0, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private runCommandWithPolicyAsync(Lcom/parse/CacheQueryController$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/CacheQueryController$CommandDelegate",
            "<TTResult;>;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/parse/CacheQueryController$7;->$SwitchMap$com$parse$ParseQuery$CachePolicy:[I

    invoke-virtual {p2}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cache policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/parse/CacheQueryController$CommandDelegate;->runOnNetworkAsync(Z)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-interface {p1}, Lcom/parse/CacheQueryController$CommandDelegate;->runFromCacheAsync()La/j;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lcom/parse/CacheQueryController$CommandDelegate;->runFromCacheAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CacheQueryController$5;

    invoke-direct {v1, p0, p1}, Lcom/parse/CacheQueryController$5;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/CacheQueryController$CommandDelegate;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/parse/CacheQueryController$CommandDelegate;->runOnNetworkAsync(Z)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CacheQueryController$6;

    invoke-direct {v1, p0, p1}, Lcom/parse/CacheQueryController$6;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/CacheQueryController$CommandDelegate;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot use the cache policy CACHE_THEN_NETWORK with find()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/parse/CacheQueryController$2;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/parse/CacheQueryController$2;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;La/j;)V

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/parse/CacheQueryController;->runCommandWithPolicyAsync(Lcom/parse/CacheQueryController$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)La/j;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/parse/CacheQueryController$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/parse/CacheQueryController$1;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;La/j;)V

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/parse/CacheQueryController;->runCommandWithPolicyAsync(Lcom/parse/CacheQueryController$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)La/j;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
