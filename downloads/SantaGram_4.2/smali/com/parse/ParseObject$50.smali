.class final Lcom/parse/ParseObject$50;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$includeAllChildren:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$50;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseObject$50;->val$objects:Ljava/util/List;

    iput-boolean p3, p0, Lcom/parse/ParseObject$50;->val$includeAllChildren:Z

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

    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v1

    iget-object v0, p0, Lcom/parse/ParseObject$50;->val$name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$50;->val$name:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/parse/ParseObject$50;->val$objects:Ljava/util/List;

    iget-boolean v3, p0, Lcom/parse/ParseObject$50;->val$includeAllChildren:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/parse/OfflineStore;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Z)La/j;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "_default"

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$50;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
