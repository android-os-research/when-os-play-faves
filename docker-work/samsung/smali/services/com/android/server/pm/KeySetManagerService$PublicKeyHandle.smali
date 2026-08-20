.class public Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KeySetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PublicKeyHandle"
.end annotation


# instance fields
.field public final mId:J

.field public final mKey:Ljava/security/PublicKey;

.field public mRefCount:I

.field public final synthetic this$0:Lcom/android/server/pm/KeySetManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V
    .registers 6

    .line 92
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->this$0:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    .line 94
    iput p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 95
    iput-object p5, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V
    .registers 5

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->this$0:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    const/4 p1, 0x1

    .line 85
    iput p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 86
    iput-object p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public decrRefCountLPw()J
    .registers 3

    .line 116
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/security/PublicKey;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public getRefCountLPr()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    return p0
.end method

.method public incrRefCountLPw()V
    .registers 2

    .line 111
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    return-void
.end method
