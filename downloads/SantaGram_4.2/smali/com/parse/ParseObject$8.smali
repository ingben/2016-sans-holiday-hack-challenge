.class Lcom/parse/ParseObject$8;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)La/j;
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
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$8;->then(La/j;)Ljava/lang/Void;

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
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$500(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseMulticastDelegate;->invoke(Ljava/lang/Object;Lcom/parse/ParseException;)V

    return-object v2
.end method
