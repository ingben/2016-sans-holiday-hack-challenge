.class Lcom/parse/OfflineStore$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$newUUID:Ljava/lang/String;

.field final synthetic val$tcs:La/k;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;La/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$2;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$2;->val$tcs:La/k;

    iput-object p3, p0, Lcom/parse/OfflineStore$2;->val$newUUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$2;->then(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(La/j;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$2;->val$tcs:La/k;

    iget-object v1, p0, Lcom/parse/OfflineStore$2;->val$newUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
