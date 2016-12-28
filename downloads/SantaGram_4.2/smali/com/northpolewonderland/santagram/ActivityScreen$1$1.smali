.class Lcom/northpolewonderland/santagram/ActivityScreen$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/ActivityScreen$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/ActivityScreen$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/ActivityScreen$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/ActivityScreen$1$1;->a:Lcom/northpolewonderland/santagram/ActivityScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/northpolewonderland/santagram/ActivityScreen$1$1;->a:Lcom/northpolewonderland/santagram/ActivityScreen$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/ActivityScreen$1;->a:Lcom/northpolewonderland/santagram/ActivityScreen;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/ActivityScreen;->activityArray:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_OTHER_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/ActivityScreen$1$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/ActivityScreen$1$1$1;-><init>(Lcom/northpolewonderland/santagram/ActivityScreen$1$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    return-void
.end method
