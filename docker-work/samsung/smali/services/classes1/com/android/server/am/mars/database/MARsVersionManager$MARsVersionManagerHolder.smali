.class public Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MARsVersionManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsVersionManager;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/android/server/am/mars/database/MARsVersionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
