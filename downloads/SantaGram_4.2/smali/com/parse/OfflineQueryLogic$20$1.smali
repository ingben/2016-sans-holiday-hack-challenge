.class Lcom/parse/OfflineQueryLogic$20$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic$20;->then(La/j;)La/j;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic$20;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic$20;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$0:Lcom/parse/OfflineQueryLogic$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$0:Lcom/parse/OfflineQueryLogic$20;

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$0:Lcom/parse/OfflineQueryLogic$20;

    iget-object v1, v1, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
