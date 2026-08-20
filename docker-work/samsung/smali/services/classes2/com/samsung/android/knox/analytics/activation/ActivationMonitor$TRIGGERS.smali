.class public final enum Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
.super Ljava/lang/Enum;
.source "ActivationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRIGGERS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    .line 73
    new-instance v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v1, "ELM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ELM"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 74
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "KLM"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, "KLM"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 75
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v14, "DO"

    const/4 v15, 0x2

    const/16 v16, 0x3

    const-string v17, "DO"

    const/16 v18, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 76
    new-instance v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "PO"

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, "PO"

    const/4 v12, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 77
    new-instance v3, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v14, "KME"

    const/4 v15, 0x4

    const/16 v16, 0x5

    const-string v17, "KES"

    const/16 v18, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 78
    new-instance v4, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "B2C"

    const/4 v9, 0x5

    const/4 v10, 0x6

    const-string v11, "B2C"

    const/4 v12, 0x5

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    .line 72
    sput-object v5, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    .line 87
    iput-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    .line 88
    iput p5, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .registers 2

    .line 72
    const-class v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .registers 1

    .line 72
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    return p0
.end method
