.class Lcom/parse/CachedCurrentUserController$5;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController;->getAsync(Z)La/j;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/CachedCurrentUserController;

.field final synthetic val$shouldAutoCreateUser:Z


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iput-boolean p2, p0, Lcom/parse/CachedCurrentUserController$5;->val$shouldAutoCreateUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/CachedCurrentUserController$5$1;

    invoke-direct {v0, p0}, Lcom/parse/CachedCurrentUserController$5$1;-><init>(Lcom/parse/CachedCurrentUserController$5;)V

    invoke-virtual {p1, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$5;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
