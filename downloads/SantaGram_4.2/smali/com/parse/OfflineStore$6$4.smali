.class Lcom/parse/OfflineStore$6$4;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$6;->then(La/j;)La/j;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$6;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$6$4;->this$1:Lcom/parse/OfflineStore$6;

    iput-object p2, p0, Lcom/parse/OfflineStore$6$4;->val$uuid:Ljava/lang/String;

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
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$6$4;->this$1:Lcom/parse/OfflineStore$6;

    iget-object v0, v0, Lcom/parse/OfflineStore$6;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$6$4;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/OfflineStore$6$4;->this$1:Lcom/parse/OfflineStore$6;

    iget-object v2, v2, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
    invoke-static {v0, v1, v2}, Lcom/parse/OfflineStore;->access$600(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$6$4;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
