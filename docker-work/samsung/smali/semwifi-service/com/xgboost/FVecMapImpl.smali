.class Lcom/xgboost/FVecMapImpl;
.super Ljava/lang/Object;
.source "FVec.java"

# interfaces
.implements Lcom/xgboost/FVec;


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/xgboost/FVecMapImpl;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public fvalue(I)F
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/xgboost/FVecMapImpl;->values:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    if-nez p0, :cond_11

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 71
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
