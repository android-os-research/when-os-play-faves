.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# instance fields
.field public final greylist description:I

.field public final greylist descriptionForSecondaryUsers:I

.field public final greylist ident:I

.field public final greylist label:I

.field public final greylist labelForSecondaryUsers:I

.field public final greylist tag:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(ILjava/lang/String;II)V
    .registers 12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;IIII)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    .line 4
    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    .line 6
    iput p4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    .line 7
    iput p5, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    .line 8
    iput p6, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    return-void
.end method
