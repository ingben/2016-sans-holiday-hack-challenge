.class final La/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b$1;,
        La/b$a;
    }
.end annotation


# static fields
.field static final a:I

.field static final b:I

.field private static final c:La/b;

.field private static final e:I


# instance fields
.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b;

    invoke-direct {v0}, La/b;-><init>()V

    sput-object v0, La/b;->c:La/b;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, La/b;->e:I

    sget v0, La/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La/b;->a:I

    sget v0, La/b;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, La/b;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b$a;-><init>(La/b$1;)V

    iput-object v0, p0, La/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 8

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, La/b;->a:I

    sget v3, La/b;->b:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, La/b;->a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    return-object v1
.end method

.method public static a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    return-void
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, La/b;->c:La/b;

    iget-object v0, v0, La/b;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method
