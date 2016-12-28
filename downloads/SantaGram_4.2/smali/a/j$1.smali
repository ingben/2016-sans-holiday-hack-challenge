.class La/j$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/j;->a(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/k;

.field final synthetic b:La/h;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:La/d;

.field final synthetic e:La/j;


# direct methods
.method constructor <init>(La/j;La/k;La/h;Ljava/util/concurrent/Executor;La/d;)V
    .locals 0

    iput-object p1, p0, La/j$1;->e:La/j;

    iput-object p2, p0, La/j$1;->a:La/k;

    iput-object p3, p0, La/j$1;->b:La/h;

    iput-object p4, p0, La/j$1;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, La/j$1;->d:La/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/j;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, La/j$1;->a:La/k;

    iget-object v1, p0, La/j$1;->b:La/h;

    iget-object v2, p0, La/j$1;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, La/j$1;->d:La/d;

    invoke-static {v0, v1, p1, v2, v3}, La/j;->a(La/k;La/h;La/j;Ljava/util/concurrent/Executor;La/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, La/j$1;->a(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
