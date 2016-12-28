.class Lcom/parse/OfflineStore$OfflineEncoder$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$OfflineEncoder;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
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
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$OfflineEncoder;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$OfflineEncoder;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncoder$2;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineEncoder$2;->val$result:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$OfflineEncoder$2;->then(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(La/j;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder$2;->val$result:Lorg/json/JSONObject;

    const-string v1, "uuid"

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    return-object v0
.end method
