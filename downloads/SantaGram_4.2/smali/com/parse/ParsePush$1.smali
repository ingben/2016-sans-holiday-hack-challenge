.class Lcom/parse/ParsePush$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePush;->sendInBackground()La/j;
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
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePush;

.field final synthetic val$state:Lcom/parse/ParsePush$State;


# direct methods
.method constructor <init>(Lcom/parse/ParsePush;Lcom/parse/ParsePush$State;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePush$1;->this$0:Lcom/parse/ParsePush;

    iput-object p2, p0, Lcom/parse/ParsePush$1;->val$state:Lcom/parse/ParsePush$State;

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
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/parse/ParsePush;->getPushController()Lcom/parse/ParsePushController;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParsePush$1;->val$state:Lcom/parse/ParsePush$State;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParsePushController;->sendInBackground(Lcom/parse/ParsePush$State;Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePush$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
