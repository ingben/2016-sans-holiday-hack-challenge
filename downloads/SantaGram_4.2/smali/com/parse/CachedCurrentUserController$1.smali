.class Lcom/parse/CachedCurrentUserController$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController;->setAsync(Lcom/parse/ParseUser;)La/j;
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

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController;Lcom/parse/ParseUser;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    iput-object p2, p0, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

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

    new-instance v0, Lcom/parse/CachedCurrentUserController$1$3;

    invoke-direct {v0, p0}, Lcom/parse/CachedCurrentUserController$1$3;-><init>(Lcom/parse/CachedCurrentUserController$1;)V

    invoke-virtual {p1, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentUserController$1$2;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$1$2;-><init>(Lcom/parse/CachedCurrentUserController$1;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentUserController$1$1;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$1$1;-><init>(Lcom/parse/CachedCurrentUserController$1;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
