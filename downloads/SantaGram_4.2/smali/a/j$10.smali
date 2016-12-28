.class La/j$10;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/j;->a(Ljava/util/concurrent/Callable;La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
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
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/d;

.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:La/h;

.field final synthetic d:Ljava/util/concurrent/Executor;

.field final synthetic e:La/g;

.field final synthetic f:La/j;


# direct methods
.method constructor <init>(La/j;La/d;Ljava/util/concurrent/Callable;La/h;Ljava/util/concurrent/Executor;La/g;)V
    .locals 0

    iput-object p1, p0, La/j$10;->f:La/j;

    iput-object p2, p0, La/j$10;->a:La/d;

    iput-object p3, p0, La/j$10;->b:Ljava/util/concurrent/Callable;

    iput-object p4, p0, La/j$10;->c:La/h;

    iput-object p5, p0, La/j$10;->d:Ljava/util/concurrent/Executor;

    iput-object p6, p0, La/j$10;->e:La/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, La/j$10;->a:La/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j$10;->a:La/d;

    invoke-virtual {v0}, La/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/j$10;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    iget-object v1, p0, La/j$10;->c:La/h;

    iget-object v2, p0, La/j$10;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, La/j;->d(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v1

    iget-object v0, p0, La/j$10;->e:La/g;

    invoke-virtual {v0}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/h;

    iget-object v2, p0, La/j$10;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, La/j;->d(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, La/j$10;->a(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
