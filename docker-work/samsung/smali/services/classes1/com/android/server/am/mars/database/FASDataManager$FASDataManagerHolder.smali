.class public Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;
.super Ljava/lang/Object;
.source "FASDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/FASDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FASDataManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/FASDataManager;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/android/server/am/mars/database/FASDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/FASDataManager;-><init>(Lcom/android/server/am/mars/database/FASDataManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
