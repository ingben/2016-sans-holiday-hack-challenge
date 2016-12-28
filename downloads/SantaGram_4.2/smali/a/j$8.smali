.class final La/j$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;La/d;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:La/d;

.field final synthetic b:La/k;

.field final synthetic c:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(La/d;La/k;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, La/j$8;->a:La/d;

    iput-object p2, p0, La/j$8;->b:La/k;

    iput-object p3, p0, La/j$8;->c:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La/j$8;->a:La/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j$8;->a:La/d;

    invoke-virtual {v0}, La/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j$8;->b:La/k;

    invoke-virtual {v0}, La/k;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, La/j$8;->b:La/k;

    iget-object v1, p0, La/j$8;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, La/j$8;->b:La/k;

    invoke-virtual {v0}, La/k;->c()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, La/j$8;->b:La/k;

    invoke-virtual {v1, v0}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
