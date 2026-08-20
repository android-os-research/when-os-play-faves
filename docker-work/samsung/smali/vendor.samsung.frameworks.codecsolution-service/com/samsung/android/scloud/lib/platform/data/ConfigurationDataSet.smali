.class public Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
.super Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
.source "ConfigurationDataSet.java"


# instance fields
.field public final filterId:Ljava/lang/String;

.field public final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "result"    # I
    .param p2, "rcode"    # I
    .param p3, "rmsg"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "filterId"    # Ljava/lang/String;
    .param p6, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p6, p0, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 25
    iput-object p5, p0, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->filterId:Ljava/lang/String;

    .line 26
    return-void
.end method
