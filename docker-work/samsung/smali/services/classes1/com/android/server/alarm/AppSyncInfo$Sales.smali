.class public interface abstract Lcom/android/server/alarm/AppSyncInfo$Sales;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AppSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

.field public static final MPCS:Z

.field public static final NORTH_AMERICA:Z

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SPR:Z

.field public static final TMO:Z

.field public static final USCC:Z

.field public static final VZW:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    .line 554
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->SALES_CODE:Ljava/lang/String;

    const-string v1, "VZW"

    .line 556
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/alarm/AppSyncInfo$Sales;->VZW:Z

    const-string v2, "ATT"

    .line 558
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_38

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_38

    :cond_36
    move v2, v3

    goto :goto_39

    :cond_38
    :goto_38
    move v2, v4

    :goto_39
    sput-boolean v2, Lcom/android/server/alarm/AppSyncInfo$Sales;->ATT:Z

    const-string v5, "TMB"

    .line 560
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/alarm/AppSyncInfo$Sales;->TMO:Z

    const-string v6, "TMK"

    .line 562
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/alarm/AppSyncInfo$Sales;->MPCS:Z

    const-string v6, "SPR"

    .line 564
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, "BST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, "VMU"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, "XAS"

    .line 565
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    goto :goto_6e

    :cond_6c
    move v6, v3

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v6, v4

    :goto_6f
    sput-boolean v6, Lcom/android/server/alarm/AppSyncInfo$Sales;->SPR:Z

    const-string v7, "USC"

    .line 567
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c

    const-string v7, "LRA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c

    const-string v7, "ACG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    goto :goto_8c

    :cond_8a
    move v7, v3

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v7, v4

    :goto_8d
    sput-boolean v7, Lcom/android/server/alarm/AppSyncInfo$Sales;->USCC:Z

    const-string v8, "RWC"

    .line 569
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "FMC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "MTA"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "CHR"

    .line 570
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "MTS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "TLS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "KDO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "SPC"

    .line 571
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "CLN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "BMC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "VMC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "PCM"

    .line 572
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "SOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "BWA"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "GLW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "VTR"

    .line 573
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "ESK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "PMB"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    const-string v8, "XAC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_128

    goto :goto_12a

    :cond_128
    move v8, v3

    goto :goto_12b

    :cond_12a
    :goto_12a
    move v8, v4

    :goto_12b
    sput-boolean v8, Lcom/android/server/alarm/AppSyncInfo$Sales;->CANADA:Z

    const-string v8, "CHN"

    .line 575
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_158

    const-string v8, "CHU"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_158

    const-string v8, "CTC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_158

    const-string v8, "CHM"

    .line 576
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_158

    const-string v8, "CHC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_156

    goto :goto_158

    :cond_156
    move v8, v3

    goto :goto_159

    :cond_158
    :goto_158
    move v8, v4

    :goto_159
    sput-boolean v8, Lcom/android/server/alarm/AppSyncInfo$Sales;->CHINA:Z

    const-string v8, "DCM"

    .line 578
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    if-nez v1, :cond_19d

    if-nez v2, :cond_19d

    if-nez v5, :cond_19d

    if-nez v6, :cond_19d

    if-nez v7, :cond_19d

    const-string v1, "XAR"

    .line 581
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19d

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19d

    const-string v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19d

    const-string v1, "CSP"

    .line 582
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19d

    const-string v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19d

    const-string v1, "BNN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    :cond_19d
    move v3, v4

    :cond_19e
    sput-boolean v3, Lcom/android/server/alarm/AppSyncInfo$Sales;->NORTH_AMERICA:Z

    return-void
.end method
