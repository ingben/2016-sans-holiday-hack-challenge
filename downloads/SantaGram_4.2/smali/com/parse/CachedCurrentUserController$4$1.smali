.class Lcom/parse/CachedCurrentUserController$4$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$4;->then(La/j;)La/j;
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
.field final synthetic this$1:Lcom/parse/CachedCurrentUserController$4;

.field final synthetic val$userTask:La/j;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$4;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$4$1;->this$1:Lcom/parse/CachedCurrentUserController$4;

    iput-object p2, p0, Lcom/parse/CachedCurrentUserController$4$1;->val$userTask:La/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
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

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$4$1;->val$userTask:La/j;

    new-instance v1, Lcom/parse/CachedCurrentUserController$4$1$1;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$4$1$1;-><init>(Lcom/parse/CachedCurrentUserController$4$1;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$4$1;->this$1:Lcom/parse/CachedCurrentUserController$4;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$4;->this$0:Lcom/parse/CachedCurrentUserController;

    # getter for: Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;
    invoke-static {v1}, Lcom/parse/CachedCurrentUserController;->access$100(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseObjectStore;

    move-result-object v1

    invoke-interface {v1}, Lcom/parse/ParseObjectStore;->deleteAsync()La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/CachedCurrentUserController$4$1$2;

    invoke-direct {v2, p0}, Lcom/parse/CachedCurrentUserController$4$1$2;-><init>(Lcom/parse/CachedCurrentUserController$4$1;)V

    invoke-virtual {v1, v2}, La/j;->a(La/h;)La/j;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [La/j;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$4$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
