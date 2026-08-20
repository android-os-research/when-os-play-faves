.class Lcom/android/server/am/BaseRestrictionMgr$1;
.super Ljava/util/ArrayList;
.source "BaseRestrictionMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseRestrictionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BaseRestrictionMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseRestrictionMgr;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/server/am/BaseRestrictionMgr$1;->this$0:Lcom/android/server/am/BaseRestrictionMgr;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const p1, 0x1030010

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
