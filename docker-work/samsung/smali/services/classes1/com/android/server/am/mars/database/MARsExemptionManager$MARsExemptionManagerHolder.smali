.class public Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;
.super Ljava/lang/Object;
.source "MARsExemptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsExemptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MARsExemptionManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsExemptionManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsExemptionManager;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsExemptionManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/android/server/am/mars/database/MARsExemptionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsExemptionManager;-><init>(Lcom/android/server/am/mars/database/MARsExemptionManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsExemptionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
