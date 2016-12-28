.class Lcom/parse/CachedCurrentUserController$4;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController;->logOutAsync()La/j;
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
.field final synthetic this$0:Lcom/parse/CachedCurrentUserController;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$4;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
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

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$4;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-virtual {v0, v2}, Lcom/parse/CachedCurrentUserController;->getAsync(Z)La/j;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [La/j;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/CachedCurrentUserController$4$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/CachedCurrentUserController$4$1;-><init>(Lcom/parse/CachedCurrentUserController$4;La/j;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$4;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
