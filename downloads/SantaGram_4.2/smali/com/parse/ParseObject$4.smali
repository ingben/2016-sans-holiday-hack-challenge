.class Lcom/parse/ParseObject$4;
.super Lcom/parse/ParseTraverser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$fetchedObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$4;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$4;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/parse/ParseObject;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseObject$4;->val$fetchedObjects:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
