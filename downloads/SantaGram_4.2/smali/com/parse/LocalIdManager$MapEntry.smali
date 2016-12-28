.class Lcom/parse/LocalIdManager$MapEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/LocalIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapEntry"
.end annotation


# instance fields
.field objectId:Ljava/lang/String;

.field retainCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/LocalIdManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/LocalIdManager$MapEntry;-><init>()V

    return-void
.end method
