.class abstract Lcom/parse/ParseRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseRequest$ParseRequestException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field static final DEFAULT_INITIAL_RETRY_DELAY:J = 0x3e8L

.field protected static final DEFAULT_MAX_RETRIES:I = 0x4

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_POOL_SIZE:I

.field private static final MAX_QUEUE_SIZE:I = 0x80

.field static final NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static defaultInitialRetryDelay:J

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private maxRetries:I

.field method:Lcom/parse/a/b$b;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/parse/ParseRequest$1;

    invoke-direct {v0}, Lcom/parse/ParseRequest$1;-><init>()V

    sput-object v0, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    sget v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    sget v1, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v6, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static/range {v0 .. v6}, Lcom/parse/ParseRequest;->newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-void
.end method

.method public constructor <init>(Lcom/parse/a/b$b;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/ParseRequest;->maxRetries:I

    iput-object p1, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/a/b$b;

    iput-object p2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/a/b$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRequest;)I
    .locals 1

    iget v0, p0, Lcom/parse/ParseRequest;->maxRetries:I

    return v0
.end method

.method static synthetic access$100(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/a/b;IJLcom/parse/ProgressCallback;La/j;)La/j;
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;IJLcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;IJLcom/parse/ProgressCallback;La/j;)La/j;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/a/b;",
            "IJ",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, La/j;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, La/j;->i()La/j;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)La/j;

    move-result-object v11

    new-instance v2, Lcom/parse/ParseRequest$4;

    move-object v3, p0

    move-object/from16 v4, p7

    move v5, p3

    move-wide/from16 v6, p4

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/parse/ParseRequest$4;-><init>(Lcom/parse/ParseRequest;La/j;IJLcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v11, v2}, La/j;->b(La/h;)La/j;

    move-result-object v2

    goto :goto_0
.end method

.method private executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;La/j;)La/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/a/b;",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    sget-wide v2, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    long-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long v4, v0, v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;IJLcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInitialRetryDelay()J
    .locals 2

    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-wide v0
.end method

.method private static newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    return-object v1
.end method

.method private sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/a/b;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseRequest$3;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)V

    sget-object v2, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, La/j;->d(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$2;-><init>(Lcom/parse/ParseRequest;)V

    sget-object v2, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultInitialRetryDelay(J)V
    .locals 0

    sput-wide p0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-void
.end method


# virtual methods
.method public executeAsync(Lcom/parse/ParseHttpClient;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            ")",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/a/b$b;

    iget-object v1, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/a/b$b;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/a/b;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method protected newBody(Lcom/parse/ProgressCallback;)Lcom/parse/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2

    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    return-object v0
.end method

.method protected newRequest(Lcom/parse/a/b$b;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/a/b;
    .locals 3

    new-instance v0, Lcom/parse/a/b$a;

    invoke-direct {v0}, Lcom/parse/a/b$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/parse/a/b$a;->a(Lcom/parse/a/b$b;)Lcom/parse/a/b$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/a/b$a;->a(Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v0

    sget-object v1, Lcom/parse/ParseRequest$5;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {p1}, Lcom/parse/a/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/parse/ParseRequest;->newBody(Lcom/parse/ProgressCallback;)Lcom/parse/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/a/b$a;->a(Lcom/parse/a/a;)Lcom/parse/a/b$a;

    :pswitch_1
    invoke-virtual {v0}, Lcom/parse/a/b$a;->a()Lcom/parse/a/b;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected newTemporaryException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2

    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    return-object v0
.end method

.method protected newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;
    .locals 2

    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    return-object v0
.end method

.method protected abstract onResponseAsync(Lcom/parse/a/c;Lcom/parse/ProgressCallback;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/a/c;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation
.end method

.method public setMaxRetries(I)V
    .locals 0

    iput p1, p0, Lcom/parse/ParseRequest;->maxRetries:I

    return-void
.end method
