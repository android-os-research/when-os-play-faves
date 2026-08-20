.class public Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeaverResult"
.end annotation


# static fields
.field public static final OP_READ:I = 0x1

.field public static final OP_WRITE:I = 0x0

.field public static final ST_NONE:I = -0x3e7

.field public static final mWeaverResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mOp:I

.field public mSlot:I

.field public mStatus:I

.field public mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 273
    iput p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    .line 274
    iput p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    const/16 p1, -0x3e7

    .line 275
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    return-void
.end method

.method public static begin(III)V
    .registers 3

    return-void
.end method

.method public static finish(I)V
    .registers 1

    return-void
.end method

.method public static finishOff(ILjava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static getBySlotIdLocked(I)Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static update(II)V
    .registers 2

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateInternal(I)V
    .registers 2

    .line 279
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    return-void
.end method
