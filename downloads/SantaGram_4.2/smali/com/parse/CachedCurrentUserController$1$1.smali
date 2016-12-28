.class Lcom/parse/CachedCurrentUserController$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$1;->then(La/j;)La/j;
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
.field final synthetic this$1:Lcom/parse/CachedCurrentUserController$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    # getter for: Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;
    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$100(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseObjectStore;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

    invoke-interface {v0, v1}, Lcom/parse/ParseObjectStore;->setAsync(Lcom/parse/ParseObject;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentUserController$1$1$1;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$1$1$1;-><init>(Lcom/parse/CachedCurrentUserController$1$1;)V

    invoke-virtual {v0, v1}, La/j;->a(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$1$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
