.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    }
.end annotation


# instance fields
.field public final mId:I

.field public final mName:Ljava/lang/String;

.field public final mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

.field public final mWindowLayers:[Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmName(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowLayers(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V
    .registers 5

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    .line 655
    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 656
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z

    .line 657
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 669
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
