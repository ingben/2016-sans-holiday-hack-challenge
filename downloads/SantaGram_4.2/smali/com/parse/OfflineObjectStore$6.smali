.class Lcom/parse/OfflineObjectStore$6;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->deleteAsync()La/j;
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
.field final synthetic this$0:Lcom/parse/OfflineObjectStore;

.field final synthetic val$ldsTask:La/j;


# direct methods
.method constructor <init>(Lcom/parse/OfflineObjectStore;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineObjectStore$6;->this$0:Lcom/parse/OfflineObjectStore;

    iput-object p2, p0, Lcom/parse/OfflineObjectStore$6;->val$ldsTask:La/j;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineObjectStore$6;->val$ldsTask:La/j;

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$6;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
