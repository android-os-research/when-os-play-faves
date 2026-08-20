.class public Lcom/android/server/asks/ASKSManagerService$1;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/asks/ASKSManagerService;->copyASKSpolicyFromSystem()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/asks/ASKSManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/asks/ASKSManagerService;)V
    .registers 2

    .line 3374
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$1;->this$0:Lcom/android/server/asks/ASKSManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "ASKS"

    .line 3376
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "ROOT"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_10
    const-string p0, "ADP.xml"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    const-string/jumbo p0, "protection_list.xml"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p0, 0x1

    :goto_25
    return p0
.end method
