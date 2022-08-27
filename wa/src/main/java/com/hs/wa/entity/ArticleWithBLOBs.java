package com.hs.wa.entity;

import java.io.Serializable;

public class ArticleWithBLOBs extends Article implements Serializable {
    private String blog;

    private String outputhtml;

    private String images;

    private static final long serialVersionUID = 1L;

    public String getBlog() {
        return blog;
    }

    public void setBlog(String blog) {
        this.blog = blog == null ? null : blog.trim();
    }

    public String getOutputhtml() {
        return outputhtml;
    }

    public void setOutputhtml(String outputhtml) {
        this.outputhtml = outputhtml == null ? null : outputhtml.trim();
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images == null ? null : images.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", blog=").append(blog);
        sb.append(", outputhtml=").append(outputhtml);
        sb.append(", images=").append(images);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}