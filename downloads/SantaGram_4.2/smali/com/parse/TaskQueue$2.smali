.class final Lcom/parse/TaskQueue$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TaskQueue;->waitFor(La/j;)La/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TT;",
        "La/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$toAwait:La/j;


# direct methods
.method constructor <init>(La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/TaskQueue$2;->val$toAwait:La/j;

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
            "<TT;>;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/TaskQueue$2;->val$toAwait:La/j;

    new-instance v1, Lcom/parse/TaskQueue$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/TaskQueue$2$1;-><init>(Lcom/parse/TaskQueue$2;La/j;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
