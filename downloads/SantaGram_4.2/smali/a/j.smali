.class public La/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/j$a;,
        La/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;

.field private static volatile d:La/j$b;

.field private static m:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<*>;"
        }
    .end annotation
.end field

.field private static n:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static o:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static p:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Exception;

.field private j:Z

.field private k:La/l;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/h",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, La/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, La/c;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, La/j;->c:Ljava/util/concurrent/Executor;

    invoke-static {}, La/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, La/j;->b:Ljava/util/concurrent/Executor;

    new-instance v0, La/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/j;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/j;->m:La/j;

    new-instance v0, La/j;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, La/j;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/j;->n:La/j;

    new-instance v0, La/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, La/j;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/j;->o:La/j;

    new-instance v0, La/j;

    invoke-direct {v0, v2}, La/j;-><init>(Z)V

    sput-object v0, La/j;->p:La/j;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/j;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/j;->l:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/j;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/j;->l:Ljava/util/List;

    invoke-virtual {p0, p1}, La/j;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/j;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/j;->l:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La/j;->l()Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/j;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a()La/j$b;
    .locals 1

    sget-object v0, La/j;->d:La/j$b;

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    invoke-virtual {v0, p0}, La/k;->b(Ljava/lang/Exception;)V

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object v0, La/j;->m:La/j;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, La/j;->n:La/j;

    goto :goto_0

    :cond_1
    sget-object v0, La/j;->o:La/j;

    goto :goto_0

    :cond_2
    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    invoke-virtual {v0, p0}, La/k;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)La/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "La/j",
            "<*>;>;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, La/k;

    invoke-direct {v5}, La/k;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, La/j;

    new-instance v0, La/j$9;

    invoke-direct/range {v0 .. v5}, La/j$9;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;La/k;)V

    invoke-virtual {v6, v0}, La/j;->a(La/h;)La/j;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, La/k;->a()La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/Callable;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, La/j;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;La/d;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v1, La/k;

    invoke-direct {v1}, La/k;-><init>()V

    :try_start_0
    new-instance v0, La/j$8;

    invoke-direct {v0, p2, v1, p0}, La/j$8;-><init>(La/d;La/k;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, La/k;->a()La/j;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, La/i;

    invoke-direct {v2, v0}, La/i;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La/j;->c(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V

    return-void
.end method

.method public static b()La/j$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "La/j",
            "<TTResult;>.a;"
        }
    .end annotation

    new-instance v0, La/j;

    invoke-direct {v0}, La/j;-><init>()V

    new-instance v1, La/j$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, La/j$a;-><init>(La/j;)V

    return-object v1
.end method

.method static synthetic b(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La/j;->d(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V

    return-void
.end method

.method private static c(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/k",
            "<TTContinuationResult;>;",
            "La/h",
            "<TTResult;TTContinuationResult;>;",
            "La/j",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, La/j$5;

    invoke-direct {v0, p4, p0, p1, p2}, La/j$5;-><init>(La/d;La/k;La/h;La/j;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, La/i;

    invoke-direct {v1, v0}, La/i;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static d(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/k",
            "<TTContinuationResult;>;",
            "La/h",
            "<TTResult;",
            "La/j",
            "<TTContinuationResult;>;>;",
            "La/j",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, La/j$6;

    invoke-direct {v0, p4, p0, p1, p2}, La/j$6;-><init>(La/d;La/k;La/h;La/j;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, La/i;

    invoke-direct {v1, v0}, La/i;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static i()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, La/j;->p:La/j;

    return-object v0
.end method

.method private m()V
    .locals 3

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/j;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p0}, La/h;->then(La/j;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/j;->l:Ljava/util/List;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method


# virtual methods
.method public a(La/h;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;TTContinuationResult;>;)",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, La/j;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/j;->a(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public a(La/h;Ljava/util/concurrent/Executor;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/j;->a(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public a(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v2, La/k;

    invoke-direct {v2}, La/k;-><init>()V

    iget-object v6, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, La/j;->c()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v8, p0, La/j;->l:Ljava/util/List;

    new-instance v0, La/j$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, La/j$1;-><init>(La/j;La/k;La/h;Ljava/util/concurrent/Executor;La/d;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-static {v2, p1, p0, p2, p3}, La/j;->c(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V

    :cond_1
    invoke-virtual {v2}, La/k;->a()La/j;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/concurrent/Callable;La/h;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "La/h",
            "<",
            "Ljava/lang/Void;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, La/j;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/concurrent/Callable;La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "La/h",
            "<",
            "Ljava/lang/Void;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v6, La/g;

    invoke-direct {v6}, La/g;-><init>()V

    new-instance v0, La/j$10;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, La/j$10;-><init>(La/j;La/d;Ljava/util/concurrent/Callable;La/h;Ljava/util/concurrent/Executor;La/g;)V

    invoke-virtual {v6, v0}, La/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, La/j;->k()La/j;

    move-result-object v1

    invoke-virtual {v6}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/h;

    invoke-virtual {v1, v0, p3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public b(La/h;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;",
            "La/j",
            "<TTContinuationResult;>;>;)",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, La/j;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/j;->b(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public b(La/h;Ljava/util/concurrent/Executor;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;",
            "La/j",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/j;->b(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public b(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;",
            "La/j",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v2, La/k;

    invoke-direct {v2}, La/k;-><init>()V

    iget-object v6, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, La/j;->c()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v8, p0, La/j;->l:Ljava/util/List;

    new-instance v0, La/j$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, La/j$2;-><init>(La/j;La/k;La/h;Ljava/util/concurrent/Executor;La/d;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-static {v2, p1, p0, p2, p3}, La/j;->d(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V

    :cond_1
    invoke-virtual {v2}, La/k;->a()La/j;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/Exception;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, La/j;->f:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/j;->f:Z

    iput-object p1, p0, La/j;->i:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/j;->j:Z

    iget-object v0, p0, La/j;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, La/j;->m()V

    iget-boolean v0, p0, La/j;->j:Z

    if-nez v0, :cond_1

    invoke-static {}, La/j;->a()La/j$b;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, La/l;

    invoke-direct {v0, p0}, La/l;-><init>(La/j;)V

    iput-object v0, p0, La/j;->k:La/l;

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, La/j;->f:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, La/j;->f:Z

    iput-object p1, p0, La/j;->h:Ljava/lang/Object;

    iget-object v2, p0, La/j;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, La/j;->m()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(La/h;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;TTContinuationResult;>;)",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, La/j;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/j;->c(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public c(La/h;Ljava/util/concurrent/Executor;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/j;->c(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public c(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, La/j$3;

    invoke-direct {v0, p0, p3, p1}, La/j$3;-><init>(La/j;La/d;La/h;)V

    invoke-virtual {p0, v0, p2}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/j;->f:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(La/h;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;",
            "La/j",
            "<TTContinuationResult;>;>;)",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, La/j;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, La/j;->d(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public d(La/h;Ljava/util/concurrent/Executor;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;",
            "La/j",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/j;->d(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public d(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/h",
            "<TTResult;",
            "La/j",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "La/d;",
            ")",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, La/j$4;

    invoke-direct {v0, p0, p3, p1}, La/j$4;-><init>(La/j;La/d;La/h;)V

    invoke-virtual {p0, v0, p2}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/j;->g:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 2

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/j;->h:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Ljava/lang/Exception;
    .locals 2

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/j;->i:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/j;->j:Z

    iget-object v0, p0, La/j;->k:La/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j;->k:La/l;

    invoke-virtual {v0}, La/l;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, La/j;->k:La/l;

    :cond_0
    iget-object v0, p0, La/j;->i:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 2

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, La/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/j;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()La/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "La/j",
            "<TTOut;>;"
        }
    .end annotation

    return-object p0
.end method

.method public k()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, La/j$7;

    invoke-direct {v0, p0}, La/j$7;-><init>(La/j;)V

    invoke-virtual {p0, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method l()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, La/j;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, La/j;->f:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, La/j;->f:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, La/j;->g:Z

    iget-object v2, p0, La/j;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, La/j;->m()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
