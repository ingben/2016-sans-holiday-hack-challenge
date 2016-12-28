.class final Lcom/parse/EventuallyPin$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/EventuallyPin;->pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)La/j;
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
        "Lcom/parse/EventuallyPin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pin:Lcom/parse/EventuallyPin;


# direct methods
.method constructor <init>(Lcom/parse/EventuallyPin;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/EventuallyPin$1;->val$pin:Lcom/parse/EventuallyPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/EventuallyPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/EventuallyPin;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/EventuallyPin$1;->val$pin:Lcom/parse/EventuallyPin;

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/EventuallyPin$1;->then(La/j;)Lcom/parse/EventuallyPin;

    move-result-object v0

    return-object v0
.end method
