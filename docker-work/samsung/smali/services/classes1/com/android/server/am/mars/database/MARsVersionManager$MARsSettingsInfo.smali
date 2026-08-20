.class public Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MARsSettingsInfo"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsVersionManager;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 55
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;->this$0:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;->key:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;->value:Ljava/lang/String;

    return-void
.end method
