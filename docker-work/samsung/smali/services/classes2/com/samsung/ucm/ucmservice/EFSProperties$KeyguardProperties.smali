.class public Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardProperties"
.end annotation


# instance fields
.field public AID:[B

.field public csName:[B

.field public enabledSCP:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 748
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 749
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    const/4 v0, -0x1

    .line 750
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 751
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 752
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 753
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 754
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 755
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    return-void
.end method

.method public constructor <init>([B[BIIIIII)V
    .registers 9

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 738
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 739
    iput p3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 740
    iput p4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 741
    iput p5, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 742
    iput p6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 743
    iput p7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 744
    iput p8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    return-void
.end method
