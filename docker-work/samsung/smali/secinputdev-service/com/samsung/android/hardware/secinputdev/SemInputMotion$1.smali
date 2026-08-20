.class Lcom/samsung/android/hardware/secinputdev/SemInputMotion$1;
.super Ljava/lang/Object;
.source "SemInputMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryRawdata([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

.field final synthetic val$rawdata:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputMotion;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    .line 141
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion$1;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion$1;->val$rawdata:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion$1;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotion$1;->val$rawdata:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->delivery([Ljava/lang/Object;)V

    .line 145
    return-void
.end method
