.class public final Lcom/android/server/am/CrashDexOpt;
.super Ljava/lang/Object;
.source "CrashDexOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;,
        Lcom/android/server/am/CrashDexOpt$CrashKind;,
        Lcom/android/server/am/CrashDexOpt$CrashPackage;
    }
.end annotation


# static fields
.field public static lock:Ljava/lang/Object;

.field public static mCrashPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/CrashDexOpt$CrashPackage;",
            ">;"
        }
    .end annotation
.end field

.field public static mDexOptedPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetlock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/am/CrashDexOpt;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/android/server/am/CrashDexOpt;->mCrashPackage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/android/server/am/CrashDexOpt;->mDexOptedPackage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/CrashDexOpt;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/android/server/am/CrashDexOpt;->mCrashPackage:Ljava/util/ArrayList;

    .line 51
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/android/server/am/CrashDexOpt;->mDexOptedPackage:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public start(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_2c

    .line 187
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const-string v0, "Native crash"

    .line 189
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 190
    new-instance p2, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;

    sget-object p3, Lcom/android/server/am/CrashDexOpt$CrashKind;->NATIVE:Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;-><init>(Lcom/android/server/am/CrashDexOpt;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CrashDexOpt$CrashKind;)V

    .line 191
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_2c

    :cond_19
    const-string/jumbo p2, "java.lang.ClassNotFoundException"

    .line 192
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 193
    new-instance p2, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;

    sget-object p3, Lcom/android/server/am/CrashDexOpt$CrashKind;->JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;-><init>(Lcom/android/server/am/CrashDexOpt;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CrashDexOpt$CrashKind;)V

    .line 194
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_2c
    :goto_2c
    return-void
.end method
