.class Lcom/parse/ParseObject$37;
.super Lcom/parse/ParseTraverser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->canBeSerialized()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$result:La/g;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;La/g;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$37;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$37;->val$result:La/g;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/parse/ParseFile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$37;->val$result:La/g;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, La/g;->a(Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/parse/ParseObject;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseObject$37;->val$result:La/g;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, La/g;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject$37;->val$result:La/g;

    invoke-virtual {v0}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
